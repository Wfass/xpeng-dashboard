.class public Lcom/alibaba/android/arouter/routes/ARouter$$Root$$XPMusicUI;
.super Ljava/lang/Object;
.source "ARouter$$Root$$XPMusicUI.java"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IRouteRoot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadInto(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/android/arouter/facade/template/IRouteGroup;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    const-class v0, Lcom/alibaba/android/arouter/routes/ARouter$$Group$$app;

    const-string v1, "app"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-class v0, Lcom/alibaba/android/arouter/routes/ARouter$$Group$$music;

    const-string v1, "music"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
