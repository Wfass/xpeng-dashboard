.class public abstract Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;
.super Ljava/lang/Object;
.source "AbsAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FilteredListener"
.end annotation


# instance fields
.field public final targetEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final targetPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->targetEvents:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->targetPackages:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$onAppEvent$0(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->targetPackages:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$onAppEvent$1(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;I[Ljava/lang/String;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->onFilterEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "params"    # [Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;->targetEvents:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$k0Puilewz77_xQrIQ1Y2F-BDK8o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$k0Puilewz77_xQrIQ1Y2F-BDK8o;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;

    invoke-direct {v1, p0, p1, p3}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$FilteredListener$aYA6Y8l2pKpF_hXEeNtiseDbZeI;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;I[Ljava/lang/String;)V

    .line 121
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    :cond_0
    return-void
.end method

.method public abstract onFilterEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
.end method
