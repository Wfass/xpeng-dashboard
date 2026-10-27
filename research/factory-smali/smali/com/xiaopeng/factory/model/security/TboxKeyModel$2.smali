.class Lcom/xiaopeng/factory/model/security/TboxKeyModel$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "TboxKeyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/security/TboxKeyModel;->dealResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "[",
        "Lcom/xiaopeng/factory/bean/http/CertKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/security/TboxKeyModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/security/TboxKeyModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel$2;->this$0:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
