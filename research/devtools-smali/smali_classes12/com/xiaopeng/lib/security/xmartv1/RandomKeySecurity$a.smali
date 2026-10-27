.class final Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$a;
.super Ljava/lang/Object;
.source "RandomKeySecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final VS:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 528
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    invoke-direct {v0}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$a;->VS:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    return-void
.end method

.method static synthetic oH()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 1

    .line 527
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$a;->VS:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    return-object v0
.end method
