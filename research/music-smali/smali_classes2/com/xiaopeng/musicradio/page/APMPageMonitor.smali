.class public Lcom/xiaopeng/musicradio/page/APMPageMonitor;
.super Ljava/lang/Object;
.source "APMPageMonitor.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/page/common/IPageMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/page/APMPageMonitor$Holder;
    }
.end annotation


# static fields
.field public static final PAGE_KEY_APP_START:Ljava/lang/String; = "MusicApp.Start"

.field private static final PROPERTIES_COSTTIME:Ljava/lang/String; = "persist.sys.musicradio.costtime.enable"

.field private static sCurrentPageKey:Ljava/lang/String; = "MusicApp.Start"


# instance fields
.field private iPageMonitor:Lcom/xiaopeng/musicradio/page/common/IPageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/page/APMPageMonitor$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;-><init>()V

    return-void
.end method

.method public static collect(Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->getInstance()Lcom/xiaopeng/musicradio/page/APMPageMonitor;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collectStage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enable()Z
    .locals 1

    .line 91
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->getInstance()Lcom/xiaopeng/musicradio/page/APMPageMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->isMonitorEnable()Z

    move-result v0

    return v0
.end method

.method public static end()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->getInstance()Lcom/xiaopeng/musicradio/page/APMPageMonitor;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->endMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public static getCurrentPageKey()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->sCurrentPageKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/musicradio/page/APMPageMonitor;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/musicradio/page/APMPageMonitor$Holder;->INSTANCE:Lcom/xiaopeng/musicradio/page/APMPageMonitor;

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "persist.sys.musicradio.costtime.enable"

    .line 33
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/page/impl/EmptyPageMonitor;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/page/impl/EmptyPageMonitor;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->iPageMonitor:Lcom/xiaopeng/musicradio/page/common/IPageMonitor;

    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->iPageMonitor:Lcom/xiaopeng/musicradio/page/common/IPageMonitor;

    :goto_1
    return-void
.end method

.method public static setCurrentPageKey(Ljava/lang/String;)V
    .locals 0

    .line 71
    sput-object p0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->sCurrentPageKey:Ljava/lang/String;

    return-void
.end method

.method public static start()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->getInstance()Lcom/xiaopeng/musicradio/page/APMPageMonitor;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->startMonitor(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public collectStage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->iPageMonitor:Lcom/xiaopeng/musicradio/page/common/IPageMonitor;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/page/common/IPageMonitor;->collectStage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endMonitor(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->iPageMonitor:Lcom/xiaopeng/musicradio/page/common/IPageMonitor;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/page/common/IPageMonitor;->endMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public isMonitorEnable()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->iPageMonitor:Lcom/xiaopeng/musicradio/page/common/IPageMonitor;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/page/common/IPageMonitor;->isMonitorEnable()Z

    move-result v0

    return v0
.end method

.method public startMonitor(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->iPageMonitor:Lcom/xiaopeng/musicradio/page/common/IPageMonitor;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/page/common/IPageMonitor;->startMonitor(Ljava/lang/String;)V

    return-void
.end method
