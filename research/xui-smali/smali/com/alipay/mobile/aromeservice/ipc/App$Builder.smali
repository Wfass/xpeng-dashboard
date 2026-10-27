.class public Lcom/alipay/mobile/aromeservice/ipc/App$Builder;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aromeservice/ipc/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private hostAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/aromeservice/ipc/App;
    .locals 3

    const/4 v0, 0x0

    .line 48
    .local v0, "app":Lcom/alipay/mobile/aromeservice/ipc/App;
    new-instance v1, Lcom/alipay/mobile/aromeservice/ipc/App;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/aromeservice/ipc/App;-><init>(Lcom/alipay/mobile/aromeservice/ipc/App$1;)V

    .line 49
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobile/aromeservice/ipc/App$Builder;->hostAppId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/aromeservice/ipc/App;->hostAppId:Ljava/lang/String;

    .line 50
    return-object v0
.end method

.method public hostAppId(Ljava/lang/String;)Lcom/alipay/mobile/aromeservice/ipc/App$Builder;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/aromeservice/ipc/App$Builder;->hostAppId:Ljava/lang/String;

    .line 44
    return-object p0
.end method
