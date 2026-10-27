.class public final synthetic Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$CduKeyModel$1kOM3WZzMOPeTfv2N8UHKuZA8ME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$CduKeyModel$1kOM3WZzMOPeTfv2N8UHKuZA8ME;->f$0:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$CduKeyModel$1kOM3WZzMOPeTfv2N8UHKuZA8ME;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$CduKeyModel$1kOM3WZzMOPeTfv2N8UHKuZA8ME;->f$0:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$CduKeyModel$1kOM3WZzMOPeTfv2N8UHKuZA8ME;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->lambda$asyncGetKey$0(Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;Ljava/lang/Runnable;)V

    return-void
.end method
