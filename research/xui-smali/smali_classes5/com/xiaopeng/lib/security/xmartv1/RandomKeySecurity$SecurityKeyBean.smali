.class public Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;
.super Ljava/lang/Object;
.source "RandomKeySecurity.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecurityKeyBean"
.end annotation


# instance fields
.field public index:I

.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    .line 639
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
