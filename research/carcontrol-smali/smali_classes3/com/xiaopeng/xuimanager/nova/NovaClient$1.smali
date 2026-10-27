.class Lcom/xiaopeng/xuimanager/nova/NovaClient$1;
.super Landroid/util/Singleton;
.source "NovaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/nova/NovaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuimanager/nova/NovaClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 648
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuimanager/nova/NovaClient;
    .locals 2

    .line 651
    new-instance v0, Lcom/xiaopeng/xuimanager/nova/NovaClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;-><init>(Lcom/xiaopeng/xuimanager/nova/NovaClient$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/nova/NovaClient$1;->create()Lcom/xiaopeng/xuimanager/nova/NovaClient;

    move-result-object v0

    return-object v0
.end method
