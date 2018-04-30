/*
 * this is the opencl kernel file
 */
 
__kernel void kernel_add(
	__global const float *a,
	__global const float *b,
	__global float *result
	)
{
	int gid = get_global_id(0);
	result[gid] = a[gid] + b[gid];
}