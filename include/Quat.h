#ifndef _QUAT_H
#define _QUAT_H

#include "types.h"
#include "Vector3.h"
#include "Matrixf.h"
#include "Matrix3f.h"

// Quat(ernion)
struct Quat {
	f32 w, x, y, z;
	Quat();
	// {
	// w = 0.0f;
	// x = 0.0f;
	// y = 0.0f;
	// z = 0.0f;
	// };
	Quat(Quat& arg0);
	// {
	//     w = arg0.w;
	//     x = arg0.x;
	//     y = arg0.y;
	//     z = arg0.z;
	// };
	Quat(f32 _w, Vector3f vec);
	// {
	// w = _w;
	// x = vec.x;
	// y = vec.y;
	// z = vec.z;
	// };
	void set(Vector3f& vec);
	void set(f32 a, f32 b, f32 c, f32 d);
	void set(f32, Vector3f& vec);
	void norm();
	void conjugate();
	void rotate(Quat&, Vector3f&);
	Quat operator*(Quat& q2);
	void inverse();
	void normalise();
	void slerp(Quat& q1, f32 f, Quat& q2);
	void toMatrix(Matrix3f& arg0);
	void fromMatrixf(Matrixf& arg0);
};

#endif
