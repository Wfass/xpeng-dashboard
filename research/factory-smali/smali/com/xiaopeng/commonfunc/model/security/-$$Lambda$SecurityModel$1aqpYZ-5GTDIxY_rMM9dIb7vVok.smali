.class public final synthetic Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$1aqpYZ-5GTDIxY_rMM9dIb7vVok;
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

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$1aqpYZ-5GTDIxY_rMM9dIb7vVok;->f$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$1aqpYZ-5GTDIxY_rMM9dIb7vVok;->f$0:Lcom/xiaopeng/commonfunc/model/security/SecurityModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->lambda$verifyCduKey$1(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V

    return-void
.end method
