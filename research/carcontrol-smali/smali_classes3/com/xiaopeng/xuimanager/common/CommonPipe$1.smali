.class Lcom/xiaopeng/xuimanager/common/CommonPipe$1;
.super Landroid/util/Singleton;
.source "CommonPipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/common/CommonPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuimanager/common/CommonPipe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuimanager/common/CommonPipe;
    .locals 2

    .line 217
    new-instance v0, Lcom/xiaopeng/xuimanager/common/CommonPipe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/common/CommonPipe;-><init>(Lcom/xiaopeng/xuimanager/common/CommonPipe$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/common/CommonPipe$1;->create()Lcom/xiaopeng/xuimanager/common/CommonPipe;

    move-result-object v0

    return-object v0
.end method
