.class public Lcom/xiaopeng/aicabin/logic/BaseLogic;
.super Ljava/lang/Object;
.source "BaseLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/ICabin;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public mParams:Lcom/xiaopeng/aicabin/DataReq;

.field public final mResult:Lcom/xiaopeng/aicabin/DataResp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLogic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "default msg"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(ZILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-void
.end method


# virtual methods
.method public beforeHandle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handle()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
