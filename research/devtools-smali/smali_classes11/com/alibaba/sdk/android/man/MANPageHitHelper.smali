.class public Lcom/alibaba/sdk/android/man/MANPageHitHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/MANPageHitHelper$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/alibaba/sdk/android/man/MANTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->isEnabled:Z

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/man/MANPageHitHelper$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/MANPageHitHelper;-><init>()V

    return-void
.end method

.method protected static getInstance()Lcom/alibaba/sdk/android/man/MANPageHitHelper;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/sdk/android/man/MANPageHitHelper$Singleton;->instance:Lcom/alibaba/sdk/android/man/MANPageHitHelper;

    return-object v0
.end method


# virtual methods
.method public pageAppear(Landroid/app/Activity;)V
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    .line 33
    sget-object p1, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->TAG:Ljava/lang/String;

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;)V

    .line 37
    const-string p1, "1"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPageEvent(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public pageDisAppear(Landroid/app/Activity;)V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    .line 42
    sget-object p1, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->TAG:Ljava/lang/String;

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;)V

    .line 46
    const-string p1, "1"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPageEvent(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setEnableStatus(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->isEnabled:Z

    .line 60
    return-void
.end method

.method public updatePageProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    .line 51
    sget-object p1, Lcom/alibaba/sdk/android/man/MANPageHitHelper;->TAG:Ljava/lang/String;

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->updatePageProperties(Ljava/util/Map;)V

    .line 55
    const-string p1, "1"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPageEvent(Ljava/lang/String;)V

    .line 56
    return-void
.end method
