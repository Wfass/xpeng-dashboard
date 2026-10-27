.class final Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$Holder;
.super Ljava/lang/Object;
.source "RandomKeySecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 628
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    invoke-direct {v0}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$Holder;->INSTANCE:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 1

    .line 627
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$Holder;->INSTANCE:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    return-object v0
.end method
