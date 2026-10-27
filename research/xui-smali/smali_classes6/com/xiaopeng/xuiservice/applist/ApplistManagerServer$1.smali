.class Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;
.super Ljava/util/HashMap;
.source "ApplistManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method
