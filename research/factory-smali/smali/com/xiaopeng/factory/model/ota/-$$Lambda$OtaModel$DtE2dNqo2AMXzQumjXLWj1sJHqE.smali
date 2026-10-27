.class public final synthetic Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$DtE2dNqo2AMXzQumjXLWj1sJHqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

.field private final synthetic f$1:Lcom/xiaopeng/lib/http/ICallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/factory/model/ota/OtaModel;Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$DtE2dNqo2AMXzQumjXLWj1sJHqE;->f$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$DtE2dNqo2AMXzQumjXLWj1sJHqE;->f$1:Lcom/xiaopeng/lib/http/ICallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$DtE2dNqo2AMXzQumjXLWj1sJHqE;->f$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$DtE2dNqo2AMXzQumjXLWj1sJHqE;->f$1:Lcom/xiaopeng/lib/http/ICallback;

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/ota/OtaModel;->lambda$asynGetPsuVersion$1(Lcom/xiaopeng/factory/model/ota/OtaModel;Lcom/xiaopeng/lib/http/ICallback;)V

    return-void
.end method
