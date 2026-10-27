.class public final synthetic Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$F5x6XBxJfOO90W_bnqklvnrQA0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$F5x6XBxJfOO90W_bnqklvnrQA0M;->f$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$F5x6XBxJfOO90W_bnqklvnrQA0M;->f$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->lambda$verifyPsuKey$0(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V

    return-void
.end method
