.class public Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$$ARouter$$Autowired;
.super Ljava/lang/Object;
.source "CollectMusicActivity$$ARouter$$Autowired.java"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/ISyringe;


# instance fields
.field private serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$$ARouter$$Autowired;->serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mode:Ljava/lang/String;

    return-void
.end method
