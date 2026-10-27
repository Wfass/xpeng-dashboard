.class public final synthetic Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;

.field private final synthetic f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$0:Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    iput-object p3, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$0:Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$TboxKeyModel$1$duEwx3tkLoHHtFsJp8dB41PtPHI;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;->lambda$onSuccess$0(Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
