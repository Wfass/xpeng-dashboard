.class public final synthetic Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;->f$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;->f$2:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;->f$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;->f$2:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->lambda$repairPsu$1(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method
