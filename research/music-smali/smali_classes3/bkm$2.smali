.class final Lbkm$2;
.super Ljava/lang/Object;
.source "MusicHttpConfig.java"

# interfaces
.implements Lbkn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkm;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v1, Lbkq;

    invoke-direct {v1}, Lbkq;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Lcom/lzy/okgo/model/HttpHeaders;Lcom/lzy/okgo/model/HttpHeaders;)V
    .locals 2

    .line 58
    invoke-static {}, Lbkm;->a()Lbkk;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbkk;->a(Lcom/lzy/okgo/model/HttpHeaders;Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 59
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bx;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeviceId"

    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bx;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "osVer"

    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bx;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "model"

    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "test_time"

    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bx;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "vin"

    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CarType"

    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CduType"

    invoke-virtual {p1, v0, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
