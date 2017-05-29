/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.7
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.scilab.modules.gui;


/* It is generated code. Disable checkstyle */
//CHECKSTYLE:OFF
/**
  * @author Calixte DENIZET
  */
public class ScilabTerminationJNI {

    /**
      * Constructor
      */
    protected ScilabTerminationJNI() {
        throw new UnsupportedOperationException();
    }

    static {
        try {
            System.loadLibrary("scigui");
        } catch (SecurityException e) {
            System.err.println("A security manager exists and does not allow the loading of the specified dynamic library.");
            System.err.println(e.getLocalizedMessage());
            e.printStackTrace(System.err);
        } catch (UnsatisfiedLinkError e) {
            if (System.getenv("CONTINUE_ON_JNI_ERROR") == null) {
                System.err.println("The native library core does not exist or cannot be found.");
                System.err.println(e.getLocalizedMessage());
                e.printStackTrace(System.err);
            }
        }
    }

    public final static native void ScilabExit();
}
