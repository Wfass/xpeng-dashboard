.class public abstract Lcom/xiaopeng/xvs/xid/base/AbsException;
.super Ljava/lang/Object;
.source "AbsException.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/IException;


# static fields
.field public static final ERROR_CODE_BASE_COMMON:I = 0x15f90

.field public static final ERROR_CODE_BASE_HABIT:I = 0xc350

.field public static final ERROR_CODE_BASE_LOGIN:I = 0x7530

.field public static final ERROR_CODE_BASE_OAUTH:I = 0x2710

.field public static final ERROR_CODE_BASE_PAY:I = 0x4e20

.field public static final ERROR_CODE_BASE_SYNC:I = 0x9c40

.field public static final ERROR_CODE_COMMON_NOT_SUPPORT:I = 0x15f97

.field public static final ERROR_CODE_COMMON_PARAM_ERROR:I = 0x15f93

.field public static final ERROR_CODE_COMMON_PARSE_FAIL:I = 0x15f91

.field public static final ERROR_CODE_COMMON_SERVER_DISCONNECTION:I = 0x15f94

.field public static final ERROR_CODE_COMMON_SERVER_UNBIND:I = 0x15f95

.field public static final ERROR_CODE_COMMON_SERVER_UNKNOWN:I = 0x15ff4

.field public static final ERROR_CODE_COMMON_TIME_OUT:I = 0x15f96

.field public static final ERROR_CODE_COMMON_USER_LOGOUT:I = 0x15f92

.field public static final ERROR_CODE_TRAFFIC_SIM_NOT_ACTIVE:I = 0xa7fa

.field public static final ERROR_CODE_TRAFFIC_SIM_NOT_CHECK_IN:I = 0xa02b

.field public static final ERROR_CODE_TRAFFIC_VIN_NOT_SUPPORT:I = 0xa7fb


# instance fields
.field protected mCode:I

.field protected mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/xiaopeng/xvs/xid/base/AbsException;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/xiaopeng/xvs/xid/base/AbsException;->mCode:I

    .line 58
    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/base/AbsException;->mMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/xiaopeng/xvs/xid/base/AbsException;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/base/AbsException;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/base/AbsException;->mMsg:Ljava/lang/String;

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/base/AbsException;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "\u7f51\u7edc\u6b63\u5728\u5f00\u5c0f\u5dee\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object v0

    :sswitch_0
    const-string v0, "not support"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "\u7f51\u7edc\u8bf7\u6c42\u8d85\u65f6"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "\u7528\u6237\u672a\u767b\u5f55"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "\u8bf7\u6c42\u6210\u529f"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x15f91 -> :sswitch_3
        0x15f92 -> :sswitch_2
        0x15f96 -> :sswitch_1
        0x15f97 -> :sswitch_0
    .end sparse-switch
.end method

.method protected varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resId",
            "formatArgs"
        }
    .end annotation

    .line 113
    invoke-static {p1, p2}, Lcom/xiaopeng/xvs/xid/utils/ResourceUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/base/AbsException;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/base/AbsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
