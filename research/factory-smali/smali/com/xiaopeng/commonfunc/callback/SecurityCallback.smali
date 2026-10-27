.class public interface abstract Lcom/xiaopeng/commonfunc/callback/SecurityCallback;
.super Ljava/lang/Object;
.source "SecurityCallback.java"


# static fields
.field public static final KEY_TYPE_CHECK_CDU_KEY:I = 0x1

.field public static final KEY_TYPE_CHECK_INDIV:I = 0x0

.field public static final KEY_TYPE_CHECK_PSO_KEY:I = 0x2

.field public static final KEY_TYPE_CHECK_TBOX_KEY:I = 0x4

.field public static final KEY_TYPE_CHECK_V18_CDU_KEY:I = 0x5

.field public static final KEY_TYPE_CHECK_WIFI_KEY:I = 0x3

.field public static final KEY_TYPE_GET_INDIV:I = 0x6

.field public static final KEY_TYPE_UNKNOWN:I = -0x1

.field public static final RESULT_FAIL:I = 0x2

.field public static final RESULT_PASS:I = 0x1

.field public static final RESULT_UNKNOWN:I = 0x3


# virtual methods
.method public abstract onReceiveResult(II)V
.end method
