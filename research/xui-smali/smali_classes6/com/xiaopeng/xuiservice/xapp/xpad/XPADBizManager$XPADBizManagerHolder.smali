.class Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$XPADBizManagerHolder;
.super Ljava/lang/Object;
.source "XPADBizManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XPADBizManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 145
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;-><init>(Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$XPADBizManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;
    .locals 1

    .line 144
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$XPADBizManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;

    return-object v0
.end method
