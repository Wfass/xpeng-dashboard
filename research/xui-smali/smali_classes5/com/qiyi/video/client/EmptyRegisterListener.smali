.class Lcom/qiyi/video/client/EmptyRegisterListener;
.super Ljava/lang/Object;
.source "EmptyRegisterListener.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSManager$RegisterListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterFailure(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 13
    return-void
.end method

.method public onRegisterSuccess(Lcom/qiyi/video/client/IQYSService;)V
    .locals 0
    .param p1, "service"    # Lcom/qiyi/video/client/IQYSService;

    .line 8
    return-void
.end method
