#include "JSystem/J3D/J3DAnmLoader.h"
#include "JSystem/J3D/J3DAnmBase.h"
#include "JSystem/J3D/J3DAnmCluster.h"
#include "JSystem/J3D/J3DAnmColor.h"
#include "JSystem/J3D/J3DAnmTevRegKey.h"
#include "JSystem/J3D/J3DAnmTexPattern.h"
#include "JSystem/J3D/J3DAnmTextureSRTKey.h"
#include "JSystem/J3D/J3DAnmTransform.h"
#include "JSystem/J3D/J3DAnmVisibilityFull.h"
#include "JSystem/J3D/J3DAnmVtxColor.h"
#include "JSystem/J3D/J3DFileBlock.h"
#include "JSystem/J3D/J3DMaterial.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JSupport/JSU.h"
#include "JSystem/JUtility/JUTNameTab.h"
#include "types.h"

/*
 * --INFO--
 * Address:	800725A0
 * Size:	0008C4
 */
J3DAnmBase* J3DAnmLoaderDataBase::load(const void* stream)
{
	if (stream == nullptr) {
		return nullptr;
	}
	J3DFileHeader* header = (J3DFileHeader*)stream;
	if (header->mJ3dVersion == 'J3D1') {
		switch (header->mFileVersion) {
		case 'bck1': {
			J3DAnmKeyLoader_v15 loader;
			loader.mAnimation = new J3DAnmTransformKey();
			return loader.load(stream);
		} break;
		case 'bpk1': {
			J3DAnmKeyLoader_v15 loader;
			loader.mAnimation = new J3DAnmColorKey();
			return loader.load(stream);
		} break;
		case 'blk1': {
			J3DAnmKeyLoader_v15 loader;
			loader.mAnimation = new J3DAnmClusterKey();
			return loader.load(stream);
		} break;
		case 'btk1': {
			J3DAnmKeyLoader_v15 loader;
			loader.mAnimation = new J3DAnmTextureSRTKey();
			return loader.load(stream);
		} break;
		case 'brk1': {
			J3DAnmKeyLoader_v15 loader;
			loader.mAnimation = new J3DAnmTevRegKey();
			return loader.load(stream);
		} break;
		case 'bxk1': {
			J3DAnmKeyLoader_v15 loader;
			loader.mAnimation = new J3DAnmVtxColorKey();
			return loader.load(stream);
		} break;
		case 'bca1': {
			J3DAnmFullLoader_v15 loader;
			loader.mAnimation = new J3DAnmTransformFull();
			return loader.load(stream);
		} break;
		case 'bpa1': {
			J3DAnmFullLoader_v15 loader;
			loader.mAnimation = new J3DAnmColorFull();
			return loader.load(stream);
		} break;
		case 'btp1': {
			J3DAnmFullLoader_v15 loader;
			loader.mAnimation = new J3DAnmTexPattern();
			return loader.load(stream);
		} break;
		case 'bva1': {
			J3DAnmFullLoader_v15 loader;
			loader.mAnimation = new J3DAnmVisibilityFull();
			return loader.load(stream);
		} break;
		case 'bla1': {
			J3DAnmFullLoader_v15 loader;
			loader.mAnimation = new J3DAnmClusterFull();
			return loader.load(stream);
		} break;
		case 'bxa1': {
			J3DAnmFullLoader_v15 loader;
			loader.mAnimation = new J3DAnmVtxColorFull();
			return loader.load(stream);
		} break;
		default:
			return nullptr;
		}
	}
	return nullptr;
}

/*
 * --INFO--
 * Address:	80072E64
 * Size:	00001C
 * __ct__20J3DAnmFullLoader_v15Fv
 */
J3DAnmFullLoader_v15::J3DAnmFullLoader_v15() { }

/*
 * --INFO--
 * Address:	80072E80
 * Size:	000048
 * __dt__12J3DAnmLoaderFv
 */
J3DAnmLoader::~J3DAnmLoader() { }

/*
 * --INFO--
 * Address:	80072EC8
 * Size:	00005C
 * __dt__20J3DAnmFullLoader_v15Fv
 */
J3DAnmFullLoader_v15::~J3DAnmFullLoader_v15() { }

/*
 * --INFO--
 * Address:	80072F24
 * Size:	00001C
 * __ct__19J3DAnmKeyLoader_v15Fv
 */
J3DAnmKeyLoader_v15::J3DAnmKeyLoader_v15() { }

/*
 * --INFO--
 * Address:	80072F40
 * Size:	00005C
 * __dt__19J3DAnmKeyLoader_v15Fv
 */
J3DAnmKeyLoader_v15::~J3DAnmKeyLoader_v15() { }

/*
 * --INFO--
 * Address:	80072F9C
 * Size:	000128
 * load__20J3DAnmFullLoader_v15FPCv
 * TODO: Regswap.
 */
J3DAnmBase* J3DAnmFullLoader_v15::load(const void* stream)
{
	const J3DFileHeader* header = reinterpret_cast<const J3DFileHeader*>(stream);
	// int blockCount              = header->mBlockCount;
	// const J3DFileBlockBase* nextBlock = reinterpret_cast<const J3DFileBlockBase*>(reinterpret_cast<const J3DFileHeader*>(stream) + 1);
	const J3DFileBlockBase* nextBlock = header->getFirstBlock();
	for (u32 i = 0; i < header->mBlockCount; i++) {
		switch (nextBlock->mBlockType) {
		case J3DFBT_AnmTransformFull:
			readAnmTransform((const J3DAnmTransformFullData*)nextBlock);
			break;
		case J3DFBT_AnmColorFull:
			readAnmColor((const J3DAnmColorFullData*)nextBlock);
			break;
		case J3DFBT_AnmTexPattern:
			readAnmTexPattern((const J3DAnmTexPatternFullData*)nextBlock);
			break;
		case J3DFBT_AnmClusterFull:
			readAnmCluster((const J3DAnmClusterFullData*)nextBlock);
			break;
		case J3DFBT_AnmVisibilityFull:
			readAnmVisibility((const J3DAnmVisibilityFullData*)nextBlock);
			break;
		case J3DFBT_AnmVtxColorFull:
			readAnmVtxColor((const J3DAnmVtxColorFullData*)nextBlock);
			break;
		}
		nextBlock = nextBlock->getNext();
	}
	return mAnimation;
}

/*
 * --INFO--
 * Address:	800730C4
 * Size:	000140
 * TODO: Regswap
 * setResource__20J3DAnmFullLoader_v15FP10J3DAnmBasePCv
 */
void J3DAnmFullLoader_v15::setResource(J3DAnmBase* resource, const void* stream)
{
	const J3DFileHeader* header       = reinterpret_cast<const J3DFileHeader*>(stream);
	const J3DFileBlockBase* nextBlock = header->getFirstBlock();
	for (u32 i = 0; i < header->mBlockCount; i++) {
		switch (nextBlock->mBlockType) {
		case J3DFBT_AnmTransformFull:
			setAnmTransform((J3DAnmTransformFull*)resource, (const J3DAnmTransformFullData*)nextBlock);
			break;
		case J3DFBT_AnmColorFull:
			setAnmColor((J3DAnmColorFull*)resource, (const J3DAnmColorFullData*)nextBlock);
			break;
		case J3DFBT_AnmTexPattern:
			setAnmTexPattern((J3DAnmTexPattern*)resource, (const J3DAnmTexPatternFullData*)nextBlock);
			break;
		case J3DFBT_AnmClusterFull:
			setAnmCluster((J3DAnmClusterFull*)resource, (const J3DAnmClusterFullData*)nextBlock);
			break;
		case J3DFBT_AnmVisibilityFull:
			setAnmVisibility((J3DAnmVisibilityFull*)resource, (const J3DAnmVisibilityFullData*)nextBlock);
			break;
		case J3DFBT_AnmVtxColorFull:
			setAnmVtxColor((J3DAnmVtxColorFull*)resource, (const J3DAnmVtxColorFullData*)nextBlock);
			break;
		}
		nextBlock = nextBlock->getNext();
	}
}

/*
 * --INFO--
 * Address:	80073204
 * Size:	000028
 */
void J3DAnmFullLoader_v15::readAnmTransform(const J3DAnmTransformFullData* data)
{
	setAnmTransform((J3DAnmTransformFull*)mAnimation, data);
}

/*
 * --INFO--
 * Address:	8007322C
 * Size:	000094
 */
void J3DAnmFullLoader_v15::setAnmTransform(J3DAnmTransformFull* animation, const J3DAnmTransformFullData* data)
{
	animation->_1E           = data->_0C;
	animation->mMaxFrame     = data->_0A;
	animation->mAttribute    = data->_08;
	animation->mCurrentFrame = 0.0f;

	animation->mTable           = JSUConvertOffsetToPtr<J3DAnmTransformFullTable>(data, data->_14);
	animation->mScaleVals       = JSUConvertOffsetToPtr<float>(data, data->_18);
	animation->mRotationVals    = JSUConvertOffsetToPtr<short>(data, data->_1C);
	animation->mTranslationVals = JSUConvertOffsetToPtr<float>(data, data->_20);
}

/*
 * --INFO--
 * Address:	800732C0
 * Size:	000028
 */
void J3DAnmFullLoader_v15::readAnmColor(const J3DAnmColorFullData* data) { setAnmColor((J3DAnmColorFull*)mAnimation, data); }

/*
 * --INFO--
 * Address:	800732E8
 * Size:	0000CC
 */
void J3DAnmFullLoader_v15::setAnmColor(J3DAnmColorFull* animation, const J3DAnmColorFullData* data)
{
	animation->mMaxFrame          = data->_0C;
	animation->mAttribute         = data->_08;
	animation->mCurrentFrame      = 0.0f;
	animation->mUpdateMaterialNum = data->_0E;

	animation->mTable            = JSUConvertOffsetToPtr<J3DAnmColorFullTable>(data, data->_18);
	animation->_2C               = JSUConvertOffsetToPtr<u8>(data, data->_24);
	animation->_30               = JSUConvertOffsetToPtr<u8>(data, data->_28);
	animation->_34               = JSUConvertOffsetToPtr<u8>(data, data->_2C);
	animation->_38               = JSUConvertOffsetToPtr<u8>(data, data->_30);
	animation->mUpdateMaterialID = JSUConvertOffsetToPtr<u16>(data, data->_1C);
	animation->mNameTab.setResource(JSUConvertOffsetToPtr<ResNTAB>(data, data->_20));
}

/*
 * --INFO--
 * Address:	800733B4
 * Size:	000028
 */
void J3DAnmFullLoader_v15::readAnmTexPattern(const J3DAnmTexPatternFullData* data)
{
	setAnmTexPattern((J3DAnmTexPattern*)mAnimation, data);
}

/*
 * --INFO--
 * Address:	800733DC
 * Size:	0000A4
 */
void J3DAnmFullLoader_v15::setAnmTexPattern(J3DAnmTexPattern* animation, const J3DAnmTexPatternFullData* data)
{
	animation->mMaxFrame          = data->_0A;
	animation->mAttribute         = data->_08;
	animation->mCurrentFrame      = 0.0f;
	animation->mUpdateMaterialNum = data->_0C;
	animation->_14                = data->_0E;

	animation->mAnmTable         = JSUConvertOffsetToPtr<J3DAnmTexPatternFullTable>(data, data->_10);
	animation->_0C               = JSUConvertOffsetToPtr<u16>(data, data->_14);
	animation->mUpdateMaterialID = JSUConvertOffsetToPtr<u16>(data, data->_18);
	animation->mNameTab.setResource(JSUConvertOffsetToPtr<ResNTAB>(data, data->_1C));
}

/*
 * --INFO--
 * Address:	80073480
 * Size:	000028
 */
void J3DAnmFullLoader_v15::readAnmVisibility(const J3DAnmVisibilityFullData* data)
{
	setAnmVisibility((J3DAnmVisibilityFull*)mAnimation, data);
}

/*
 * --INFO--
 * Address:	800734A8
 * Size:	00007C
 */
void J3DAnmFullLoader_v15::setAnmVisibility(J3DAnmVisibilityFull* animation, const J3DAnmVisibilityFullData* data)
{
	animation->mMaxFrame     = data->_0A;
	animation->mAttribute    = data->_08;
	animation->mCurrentFrame = 0.0f;
	animation->_0C           = data->_0C;
	animation->_0E           = data->_0E;

	animation->mTable  = JSUConvertOffsetToPtr<J3DAnmVisibilityFullTable>(data, data->_10);
	animation->mValues = JSUConvertOffsetToPtr<u8>(data, data->_14);
}

/*
 * --INFO--
 * Address:	80073524
 * Size:	000028
 */
void J3DAnmFullLoader_v15::readAnmCluster(const J3DAnmClusterFullData* data) { setAnmCluster((J3DAnmClusterFull*)mAnimation, data); }

/*
 * --INFO--
 * Address:	8007354C
 * Size:	00006C
 */
void J3DAnmFullLoader_v15::setAnmCluster(J3DAnmClusterFull* animation, const J3DAnmClusterFullData* data)
{
	animation->mMaxFrame     = data->_0A;
	animation->mAttribute    = data->_08;
	animation->mCurrentFrame = 0.0f;

	animation->mTables = JSUConvertOffsetToPtr<J3DAnmClusterFullTable>(data, data->_10);
	animation->_0C     = JSUConvertOffsetToPtr<f32>(data, data->_14);
}

/*
 * --INFO--
 * Address:	800735B8
 * Size:	000028
 */
void J3DAnmFullLoader_v15::readAnmVtxColor(const J3DAnmVtxColorFullData* data) { setAnmVtxColor((J3DAnmVtxColorFull*)mAnimation, data); }

/*
 * --INFO--
 * Address:	800735E0
 * Size:	000170
 * TODO: Type of J3DAnmVtxColorIndexData::_04 is wrong? It might be u16*...
 * setAnmVtxColor__20J3DAnmFullLoader_v15FP18J3DAnmVtxColorFullPC22J3DAnmVtxColorFullData
 */
void J3DAnmFullLoader_v15::setAnmVtxColor(J3DAnmVtxColorFull* animation, const J3DAnmVtxColorFullData* data)
{
	animation->mMaxFrame       = data->_0A;
	animation->mAttribute      = data->_08;
	animation->mCurrentFrame   = 0.0f;
	animation->mAnmTableNum[0] = data->_0C;
	animation->mAnmTableNum[1] = data->_0E;

	animation->mTable[0]                = JSUConvertOffsetToPtr<J3DAnmColorFullTable>(data, data->_18);
	animation->mTable[1]                = JSUConvertOffsetToPtr<J3DAnmColorFullTable>(data, data->_1C);
	animation->mAnmVtxColorIndexData[0] = JSUConvertOffsetToPtr<J3DAnmVtxColorIndexData>(data, data->_20);
	animation->mAnmVtxColorIndexData[1] = JSUConvertOffsetToPtr<J3DAnmVtxColorIndexData>(data, data->_24);
	u16* v1                             = JSUConvertOffsetToPtr<u16>(data, data->_28);
	u16* v2                             = JSUConvertOffsetToPtr<u16>(data, data->_2C);

	for (int i = 0; i < animation->mAnmTableNum[0]; i++) {
		animation->mAnmVtxColorIndexData[0][i]._04 = (long)(v1 + animation->mAnmVtxColorIndexData[0][i]._04);
	}
	for (int i = 0; i < animation->mAnmTableNum[1]; i++) {
		animation->mAnmVtxColorIndexData[1][i]._04 = (long)(v2 + animation->mAnmVtxColorIndexData[1][i]._04);
	}

	animation->mRedVals   = JSUConvertOffsetToPtr<u8>(data, data->_30);
	animation->mGreenVals = JSUConvertOffsetToPtr<u8>(data, data->_34);
	animation->mBlueVals  = JSUConvertOffsetToPtr<u8>(data, data->_38);
	animation->mAlphaVals = JSUConvertOffsetToPtr<u8>(data, data->_3C);
}

/*
 * --INFO--
 * Address:	80073750
 * Size:	000128
 * load__19J3DAnmKeyLoader_v15FPCv
 */
J3DAnmBase* J3DAnmKeyLoader_v15::load(const void* stream)
{
	const J3DFileHeader* header = reinterpret_cast<const J3DFileHeader*>(stream);
	// int blockCount              = header->mBlockCount;
	// const J3DFileBlockBase* nextBlock = reinterpret_cast<const J3DFileBlockBase*>(reinterpret_cast<const J3DFileHeader*>(stream) + 1);
	const J3DFileBlockBase* nextBlock = header->getFirstBlock();
	for (u32 i = 0; i < header->mBlockCount; i++) {
		switch (nextBlock->mBlockType) {
		case J3DFBT_AnmTransformKey:
			readAnmTransform((const J3DAnmTransformKeyData*)nextBlock);
			break;
		case J3DFBT_AnmColorKey:
			readAnmColor((const J3DAnmColorKeyData*)nextBlock);
			break;
		case J3DFBT_AnmClusterKey:
			readAnmCluster((const J3DAnmClusterKeyData*)nextBlock);
			break;
		case J3DFBT_AnmTextureSRTKey:
			readAnmTextureSRT((const J3DAnmTextureSRTKeyData*)nextBlock);
			break;
		case J3DFBT_AnmTevRegKey:
			readAnmTevReg((const J3DAnmTevRegKeyData*)nextBlock);
			break;
		case J3DFBT_AnmVtxColorKey:
			readAnmVtxColor((const J3DAnmVtxColorKeyData*)nextBlock);
			break;
		}
		nextBlock = nextBlock->getNext();
	}
	return mAnimation;
}

/*
 * --INFO--
 * Address:	80073878
 * Size:	000140
 * setResource__19J3DAnmKeyLoader_v15FP10J3DAnmBasePCv
 */
void J3DAnmKeyLoader_v15::setResource(J3DAnmBase* resource, const void* stream)
{
	const J3DFileHeader* header       = reinterpret_cast<const J3DFileHeader*>(stream);
	const J3DFileBlockBase* nextBlock = header->getFirstBlock();
	for (u32 i = 0; i < header->mBlockCount; i++) {
		switch (nextBlock->mBlockType) {
		case J3DFBT_AnmTransformKey:
			setAnmTransform((J3DAnmTransformKey*)resource, (const J3DAnmTransformKeyData*)nextBlock);
			break;
		case J3DFBT_AnmColorKey:
			setAnmColor((J3DAnmColorKey*)resource, (const J3DAnmColorKeyData*)nextBlock);
			break;
		case J3DFBT_AnmClusterKey:
			setAnmCluster((J3DAnmClusterKey*)resource, (const J3DAnmClusterKeyData*)nextBlock);
			break;
		case J3DFBT_AnmTextureSRTKey:
			setAnmTextureSRT((J3DAnmTextureSRTKey*)resource, (const J3DAnmTextureSRTKeyData*)nextBlock);
			break;
		case J3DFBT_AnmTevRegKey:
			setAnmTevReg((J3DAnmTevRegKey*)resource, (const J3DAnmTevRegKeyData*)nextBlock);
			break;
		case J3DFBT_AnmVtxColorKey:
			setAnmVtxColor((J3DAnmVtxColorKey*)resource, (const J3DAnmVtxColorKeyData*)nextBlock);
			break;
		}
		nextBlock = nextBlock->getNext();
	}
}

/*
 * --INFO--
 * Address:	800739B8
 * Size:	000028
 * readAnmTransform__19J3DAnmKeyLoader_v15FPC22J3DAnmTransformKeyData
 */
void J3DAnmKeyLoader_v15::readAnmTransform(const J3DAnmTransformKeyData* data) { setAnmTransform((J3DAnmTransformKey*)mAnimation, data); }

/*
 * --INFO--
 * Address:	800739E0
 * Size:	00009C
 * setAnmTransform__19J3DAnmKeyLoader_v15FP18J3DAnmTransformKeyPC22J3DAnmTransformKeyData
 */
void J3DAnmKeyLoader_v15::setAnmTransform(J3DAnmTransformKey* animation, const J3DAnmTransformKeyData* data)
{
	animation->_1E           = data->_0C;
	animation->mMaxFrame     = data->_0A;
	animation->mAttribute    = data->_08;
	animation->_20           = data->_09;
	animation->mCurrentFrame = 0.0f;

	animation->mTable           = JSUConvertOffsetToPtr<J3DAnmTransformKeyTable>(data, data->_14);
	animation->mScaleVals       = JSUConvertOffsetToPtr<float>(data, data->_18);
	animation->mRotationVals    = JSUConvertOffsetToPtr<short>(data, data->_1C);
	animation->mTranslationVals = JSUConvertOffsetToPtr<float>(data, data->_20);
}

/*
 * --INFO--
 * Address:	80073A7C
 * Size:	000028
 * readAnmTextureSRT__19J3DAnmKeyLoader_v15FPC23J3DAnmTextureSRTKeyData
 */
void J3DAnmKeyLoader_v15::readAnmTextureSRT(const J3DAnmTextureSRTKeyData* data)
{
	setAnmTextureSRT((J3DAnmTextureSRTKey*)mAnimation, data);
}

/*
 * --INFO--
 * Address:	80073AA4
 * Size:	0001D8
 * setAnmTextureSRT__19J3DAnmKeyLoader_v15FP19J3DAnmTextureSRTKeyPC23J3DAnmTextureSRTKeyData
 */
void J3DAnmKeyLoader_v15::setAnmTextureSRT(J3DAnmTextureSRTKey* animation, const J3DAnmTextureSRTKeyData* data)
{
	animation->mUpdateMaterialNum = data->_0C;
	animation->mMaxFrame          = data->_0A;
	animation->mAttribute         = data->_08;
	animation->_0C                = data->_09;
	animation->mCurrentFrame      = 0.0f;
	animation->mUpdateMaterialNum = data->_0C; // again???
	animation->_16                = data->_0E;
	animation->_18                = data->_10;
	animation->_1A                = data->_12;

	animation->_10               = JSUConvertOffsetToPtr<J3DAnmTransformKeyTable>(data, data->_14);
	animation->mUpdateMaterialID = JSUConvertOffsetToPtr<u16>(data, data->_18);
	animation->_30.setResource(JSUConvertOffsetToPtr<ResNTAB>(data, data->_1C));
	animation->mUpdateTexMtxID = JSUConvertOffsetToPtr<u8>(data, data->_20);
	animation->_40             = JSUConvertOffsetToPtr<Vec>(data, data->_24);
	animation->_1C             = JSUConvertOffsetToPtr<float>(data, data->_28);
	animation->_20             = JSUConvertOffsetToPtr<s16>(data, data->_2C);
	animation->_24             = JSUConvertOffsetToPtr<float>(data, data->_30);
	if (data->_44 != nullptr) {
		animation->_64.setResource(JSUConvertOffsetToPtr<ResNTAB>(data, data->_44));
	}
	animation->_4A = data->_34;
	animation->_44 = data->_36;
	animation->_46 = data->_38;
	animation->_48 = data->_3A;
	animation->_58 = JSUConvertOffsetToPtr<J3DAnmTransformKeyTable>(data, data->_3C);
	animation->_60 = JSUConvertOffsetToPtr<u16>(data, data->_40);
	animation->_5C = JSUConvertOffsetToPtr<u8>(data, data->_48);
	animation->_74 = JSUConvertOffsetToPtr<Vec>(data, data->_4C);
	animation->_4C = JSUConvertOffsetToPtr<float>(data, data->_50);
	animation->_50 = JSUConvertOffsetToPtr<s16>(data, data->_54);
	animation->_54 = JSUConvertOffsetToPtr<float>(data, data->_58);
	switch (data->_5C) {
	case 0:
	case 1:
		animation->mTexMtxCalcType = data->_5C;
		break;
	default:
		animation->mTexMtxCalcType = 0;
	}
}

/*
 * --INFO--
 * Address:	80073C7C
 * Size:	000028
 * readAnmColor__19J3DAnmKeyLoader_v15FPC18J3DAnmColorKeyData
 */
void J3DAnmKeyLoader_v15::readAnmColor(const J3DAnmColorKeyData* data) { setAnmColor((J3DAnmColorKey*)mAnimation, data); }

/*
 * --INFO--
 * Address:	80073CA4
 * Size:	0000EC
 * setAnmColor__19J3DAnmKeyLoader_v15FP14J3DAnmColorKeyPC18J3DAnmColorKeyData
 */
void J3DAnmKeyLoader_v15::setAnmColor(J3DAnmColorKey* animation, const J3DAnmColorKeyData* data)
{
	animation->mMaxFrame          = data->_0C;
	animation->mAttribute         = data->_08;
	animation->mCurrentFrame      = 0.0f;
	animation->mUpdateMaterialNum = data->_0E;
	animation->_0C                = data->_10;
	animation->_0E                = data->_12;
	animation->_10                = data->_14;
	animation->_12                = data->_16;
	animation->mTable             = JSUConvertOffsetToPtr<J3DAnmColorKeyTable>(data, data->_18);
	animation->_2C                = JSUConvertOffsetToPtr<s16>(data, data->_24);
	animation->_30                = JSUConvertOffsetToPtr<s16>(data, data->_28);
	animation->_34                = JSUConvertOffsetToPtr<s16>(data, data->_2C);
	animation->_38                = JSUConvertOffsetToPtr<s16>(data, data->_30);
	animation->mUpdateMaterialID  = JSUConvertOffsetToPtr<u16>(data, data->_1C);

	animation->mNameTab.setResource(JSUConvertOffsetToPtr<ResNTAB>(data, data->_20));
}

/*
 * --INFO--
 * Address:	80073D90
 * Size:	000028
 * readAnmCluster__19J3DAnmKeyLoader_v15FPC20J3DAnmClusterKeyData
 */
void J3DAnmKeyLoader_v15::readAnmCluster(const J3DAnmClusterKeyData* data) { setAnmCluster((J3DAnmClusterKey*)mAnimation, data); }

/*
 * --INFO--
 * Address:	80073DB8
 * Size:	00006C
 * setAnmCluster__19J3DAnmKeyLoader_v15FP16J3DAnmClusterKeyPC20J3DAnmClusterKeyData
 */
void J3DAnmKeyLoader_v15::setAnmCluster(J3DAnmClusterKey* animation, const J3DAnmClusterKeyData* data)
{
	animation->mMaxFrame     = data->_0A;
	animation->mAttribute    = data->_08;
	animation->mCurrentFrame = 0.0f;
	animation->mTables       = JSUConvertOffsetToPtr<J3DAnmClusterKeyTable>(data, data->_10);
	animation->_0C           = JSUConvertOffsetToPtr<float>(data, data->_14);
}

/*
 * --INFO--
 * Address:	80073E24
 * Size:	000028
 * readAnmTevReg__19J3DAnmKeyLoader_v15FPC19J3DAnmTevRegKeyData
 */
void J3DAnmKeyLoader_v15::readAnmTevReg(const J3DAnmTevRegKeyData* data) { setAnmTevReg((J3DAnmTevRegKey*)mAnimation, data); }

/*
 * --INFO--
 * Address:	80073E4C
 * Size:	00018C
 * setAnmTevReg__19J3DAnmKeyLoader_v15FP15J3DAnmTevRegKeyPC19J3DAnmTevRegKeyData
 */
void J3DAnmKeyLoader_v15::setAnmTevReg(J3DAnmTevRegKey* animation, const J3DAnmTevRegKeyData* data)
{
	animation->mMaxFrame              = data->_0A;
	animation->mAttribute             = data->_08;
	animation->mCurrentFrame          = 0.0f;
	animation->mCRegUpdateMaterialNum = data->_0C;
	animation->_48                    = JSUConvertOffsetToPtr<J3DAnmCRegKeyTable>(data, data->_20);
	animation->mCRegUpdateMaterialID  = JSUConvertOffsetToPtr<u16>(data, data->_28);
	animation->_24.setResource(JSUConvertOffsetToPtr<ResNTAB>(data, data->_30));
	animation->mKRegUpdateMaterialNum = data->_0E;
	animation->_4C                    = JSUConvertOffsetToPtr<J3DAnmKRegKeyTable>(data, data->_24);
	animation->mKRegUpdateMaterialID  = JSUConvertOffsetToPtr<u16>(data, data->_2C);
	animation->_38.setResource(JSUConvertOffsetToPtr<ResNTAB>(data, data->_34));
	animation->_10 = data->_10;
	animation->_12 = data->_12;
	animation->_14 = data->_14;
	animation->_16 = data->_16;
	animation->_50 = JSUConvertOffsetToPtr<s16>(data, data->_38);
	animation->_54 = JSUConvertOffsetToPtr<s16>(data, data->_3C);
	animation->_58 = JSUConvertOffsetToPtr<s16>(data, data->_40);
	animation->_5C = JSUConvertOffsetToPtr<s16>(data, data->_44);
	animation->_18 = data->_18;
	animation->_1A = data->_1A;
	animation->_1C = data->_1C;
	animation->_1E = data->_1E;
	animation->_60 = JSUConvertOffsetToPtr<s16>(data, data->_48);
	animation->_64 = JSUConvertOffsetToPtr<s16>(data, data->_4C);
	animation->_68 = JSUConvertOffsetToPtr<s16>(data, data->_50);
	animation->_6C = JSUConvertOffsetToPtr<s16>(data, data->_54);
}

/*
 * --INFO--
 * Address:	80073FD8
 * Size:	000028
 * readAnmVtxColor__19J3DAnmKeyLoader_v15FPC21J3DAnmVtxColorKeyData
 */
void J3DAnmKeyLoader_v15::readAnmVtxColor(const J3DAnmVtxColorKeyData* data) { setAnmVtxColor((J3DAnmVtxColorKey*)mAnimation, data); }

/*
 * --INFO--
 * Address:	80074000
 * Size:	000170
 * setAnmVtxColor__19J3DAnmKeyLoader_v15FP17J3DAnmVtxColorKeyPC21J3DAnmVtxColorKeyData
 */
void J3DAnmKeyLoader_v15::setAnmVtxColor(J3DAnmVtxColorKey* animation, const J3DAnmVtxColorKeyData* data)
{
	animation->mMaxFrame       = data->_0A;
	animation->mAttribute      = data->_08;
	animation->mCurrentFrame   = 0.0f;
	animation->mAnmTableNum[0] = data->_0C;
	animation->mAnmTableNum[1] = data->_0E;

	animation->mTable[0]                = JSUConvertOffsetToPtr<J3DAnmColorKeyTable>(data, data->_18);
	animation->mTable[1]                = JSUConvertOffsetToPtr<J3DAnmColorKeyTable>(data, data->_1C);
	animation->mAnmVtxColorIndexData[0] = JSUConvertOffsetToPtr<J3DAnmVtxColorIndexData>(data, data->_20);
	animation->mAnmVtxColorIndexData[1] = JSUConvertOffsetToPtr<J3DAnmVtxColorIndexData>(data, data->_24);

	u16* v1 = JSUConvertOffsetToPtr<u16>(data, data->_28);
	u16* v2 = JSUConvertOffsetToPtr<u16>(data, data->_2C);
	for (int i = 0; i < animation->mAnmTableNum[0]; i++) {
		animation->mAnmVtxColorIndexData[0][i]._04 = (long)(v1 + animation->mAnmVtxColorIndexData[0][i]._04);
	}
	for (int i = 0; i < animation->mAnmTableNum[1]; i++) {
		animation->mAnmVtxColorIndexData[1][i]._04 = (long)(v2 + animation->mAnmVtxColorIndexData[1][i]._04);
	}

	animation->mRedVals   = JSUConvertOffsetToPtr<s16>(data, data->_30);
	animation->mGreenVals = JSUConvertOffsetToPtr<s16>(data, data->_34);
	animation->mBlueVals  = JSUConvertOffsetToPtr<s16>(data, data->_38);
	animation->mAlphaVals = JSUConvertOffsetToPtr<s16>(data, data->_3C);
}

/*
 * --INFO--
 * Address:	80074170
 * Size:	00005C
 * __dt__20J3DAnmVisibilityFullFv
 */
// J3DAnmVisibilityFull::~J3DAnmVisibilityFull() { }

/*
 * --INFO--
 * Address:	800741CC
 * Size:	000008
 */
// u32 J3DAnmVisibilityFull::getKind() const { return 0x6; }

/*
 * --INFO--
 * Address:	800741D4
 * Size:	000074
 * __dt__16J3DAnmTexPatternFv
 */
// J3DAnmTexPattern::~J3DAnmTexPattern() { }

/*
 * --INFO--
 * Address:	80074248
 * Size:	000008
 */
// u32 J3DAnmTexPattern::getKind() const { return 0x2; }

/*
 * --INFO--
 * Address:	80074250
 * Size:	000088
 * __dt__15J3DAnmTevRegKeyFv
 */
// J3DAnmTevRegKey::~J3DAnmTevRegKey() { }

/*
 * --INFO--
 * Address:	800742D8
 * Size:	000008
 */
// u32 J3DAnmTevRegKey::getKind() const { return 0x5; }

/*
 * --INFO--
 * Address:	800742E0
 * Size:	000088
 * __dt__19J3DAnmTextureSRTKeyFv
 */
// J3DAnmTextureSRTKey::~J3DAnmTextureSRTKey() { }

/*
 * --INFO--
 * Address:	80074368
 * Size:	000008
 */
// u32 J3DAnmTextureSRTKey::getKind() const { return 0x4; }

/*
 * --INFO--
 * Address:	80074370
 * Size:	00006C
 * __dt__18J3DAnmTransformKeyFv
 */
// J3DAnmTransformKey::~J3DAnmTransformKey() { }

/*
 * --INFO--
 * Address:	800743DC
 * Size:	000008
 */
// u32 J3DAnmTransformKey::getKind() const { return 0x8; }

/*
 * --INFO--
 * Address:	800743E4
 * Size:	000024
 * getTransform__18J3DAnmTransformKeyCFUsP16J3DTransformInfo
 */
// void J3DAnmTransformKey::getTransform(unsigned short p1, J3DTransformInfo* p2) const { calcTransform(mCurrentFrame, p1, p2); }

/*
 * --INFO--
 * Address:	80074408
 * Size:	000018
 * JSUConvertOffsetToPtr<21J3DAnmClusterKeyTable>__FPCvPCv
 */
// void JSUConvertOffsetToPtr<J3DAnmClusterKeyTable>(const void*, const void*) { }

/*
 * --INFO--
 * Address:	80074420
 * Size:	000018
 * JSUConvertOffsetToPtr<22J3DAnmClusterFullTable>__FPCvPCv
 */
// void JSUConvertOffsetToPtr<J3DAnmClusterFullTable>(const void*, const void*) { }
