.class public final synthetic Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$3Z3Hn-GP4kSIODa7RVLFN383X0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/factory/model/ota/OtaModel;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$3Z3Hn-GP4kSIODa7RVLFN383X0k;->f$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$3Z3Hn-GP4kSIODa7RVLFN383X0k;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$3Z3Hn-GP4kSIODa7RVLFN383X0k;->f$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$3Z3Hn-GP4kSIODa7RVLFN383X0k;->f$1:[B

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/ota/OtaModel;->lambda$asynResetPsuKey$0(Lcom/xiaopeng/factory/model/ota/OtaModel;[B)V

    return-void
.end method
