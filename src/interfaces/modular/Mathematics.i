/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2009 Soeren Sonnenburg
 * Written (W) 2013 Heiko Strathmann
 * Copyright (C) 2009 Fraunhofer Institute FIRST and Max-Planck-Society
 */

/* Remove C Prefix */
%rename(Math) CMath;
%rename(Statistics) CStatistics;
%rename(SparseInverseCovariance) CSparseInverseCovariance;

/* Log-det framework */

#ifdef SHOGUN_HAVE_EIGEN3
/* Trace samplers */
%rename(TraceSampler) CTraceSampler;
%rename(NormalSampler) CNormalSampler;
%rename(ProbingSampler) CProbingSampler;

/* Linear operators */
%include <mathematics/linalg/linop/LinearOperator.h>
namespace shogun
{
#ifdef SHOGUN_USE_FLOAT64
    %template(RealLinearOperator) CLinearOperator<float64_t>;
#endif
#ifdef SHOGUN_USE_COMPLEX128
    %template(ComplexLinearOperator) CLinearOperator<complex128_t>;
#endif
}

%include <mathematics/linalg/linop/MatrixOperator.h>
namespace shogun
{
#ifdef SHOGUN_USE_FLOAT64
    %template(RealMatrixOperator) CMatrixOperator<float64_t>;
#endif
#ifdef SHOGUN_USE_COMPLEX128
    %template(ComplexMatrixOperator) CMatrixOperator<complex128_t>;
#endif
}

%include <mathematics/linalg/linop/SparseMatrixOperator.h>
namespace shogun
{
#ifdef SHOGUN_USE_FLOAT64
    %template(RealSparseMatrixOperator) CSparseMatrixOperator<float64_t>;
#endif
#ifdef SHOGUN_USE_COMPLEX128
    %template(ComplexSparseMatrixOperator) CSparseMatrixOperator<complex128_t>;
#endif
}

%include <mathematics/linalg/linop/DenseMatrixOperator.h>
namespace shogun
{
#ifdef SHOGUN_USE_FLOAT64
    %template(RealDenseMatrixOperator) CDenseMatrixOperator<float64_t>;
#endif
#ifdef SHOGUN_USE_COMPLEX128
    %template(ComplexDenseMatrixOperator) CDenseMatrixOperator<complex128_t>;
#endif
}

/* Operator functions */
%include <mathematics/linalg/ratapprox/opfunc/OperatorFunction.h>
namespace shogun
{
#ifdef SHOGUN_USE_FLOAT64
    %template(RealOperatorFunction) COperatorFunction<float64_t>;
#endif
}

%rename(RationalApproximation) CRationalApproximation;
%rename(LogRationalApproximationIndividual) CLogRationalApproximationIndividual;
%rename(LogRationalApproximationCGM) CLogRationalApproximationCGM;

/* Linear solvers */
%include <mathematics/linalg/linsolver/LinearSolver.h>
namespace shogun
{
#if defined(SHOGUN_USE_FLOAT64)
    %template(RealLinearSolver) CLinearSolver<float64_t,float64_t>;
#endif
#if defined(SHOGUN_USE_FLOAT64) && defined(SHOGUN_USE_COMPLEX128)
    %template(ComplexRealLinearSolver) CLinearSolver<complex128_t,float64_t>;
#endif
}

%rename(DirectSparseLinearSolver) CDirectSparseLinearSolver;
#ifdef SHOGUN_USE_COMPLEX128
  %rename(DirectLinearSolverComplex) CDirectLinearSolverComplex;
#endif

%include <mathematics/linalg/linsolver/IterativeLinearSolver.h>
namespace shogun
{
#if defined(SHOGUN_USE_FLOAT64)
    %template(RealIterativeLinearSolver) CIterativeLinearSolver<float64_t,float64_t>;
#endif
#if defined(SHOGUN_USE_FLOAT64) && defined(SHOGUN_USE_COMPLEX128)
    %template(ComplexRealIterativeLinearSolver) CIterativeLinearSolver<complex128_t,float64_t>;
#endif
}

%rename (ConjugateGradientSolver) CConjugateGradientSolver;
%rename (ConjugateOrthogonalCGSolver) CConjugateOrthogonalCGSolver;

%include <mathematics/linalg/linsolver/IterativeShiftedLinearFamilySolver.h>
namespace shogun
{
#if defined(SHOGUN_USE_FLOAT64) && defined(SHOGUN_USE_COMPLEX128)
    %template(RealComplexIterativeShiftedLinearSolver) CIterativeShiftedLinearFamilySolver<float64_t,complex128_t>;
#endif
}

%rename(CGMShiftedFamilySolver) CCGMShiftedFamilySolver;

%rename(EigenSolver) CEigenSolver;
%rename(LanczosEigenSolver) CLanczosEigenSolver;

%rename(LogDetEstimator) CLogDetEstimator;
#endif // SHOGUN_HAVE_EIGEN3

/* Include Class Headers to make them visible from within the target language */
%include <mathematics/Math.h>
%include <mathematics/Statistics.h>
%include <mathematics/SparseInverseCovariance.h>

/* Log-det framework */
%include <mathematics/linalg/ratapprox/tracesampler/TraceSampler.h>
%include <mathematics/linalg/ratapprox/tracesampler/NormalSampler.h>
%include <mathematics/linalg/ratapprox/tracesampler/ProbingSampler.h>

%include <mathematics/linalg/linop/LinearOperator.h>
%include <mathematics/linalg/linop/MatrixOperator.h>
%include <mathematics/linalg/linop/SparseMatrixOperator.h>
%include <mathematics/linalg/linop/DenseMatrixOperator.h>

%include <mathematics/linalg/ratapprox/opfunc/OperatorFunction.h>
%include <mathematics/linalg/ratapprox/opfunc/RationalApproximation.h>
%include <mathematics/linalg/ratapprox/logdet/opfunc/LogRationalApproximationIndividual.h>
%include <mathematics/linalg/ratapprox/logdet/opfunc/LogRationalApproximationCGM.h>

%include <mathematics/linalg/linsolver/LinearSolver.h>
%include <mathematics/linalg/linsolver/DirectSparseLinearSolver.h>
%include <mathematics/linalg/linsolver/DirectLinearSolverComplex.h>
%include <mathematics/linalg/linsolver/IterativeLinearSolver.h>
%include <mathematics/linalg/linsolver/ConjugateGradientSolver.h>
%include <mathematics/linalg/linsolver/ConjugateOrthogonalCGSolver.h>
%include <mathematics/linalg/linsolver/IterativeShiftedLinearFamilySolver.h>
%include <mathematics/linalg/linsolver/CGMShiftedFamilySolver.h>

%include <mathematics/linalg/eigsolver/EigenSolver.h>
%include <mathematics/linalg/eigsolver/LanczosEigenSolver.h>

%include <mathematics/linalg/ratapprox/logdet/LogDetEstimator.h>
