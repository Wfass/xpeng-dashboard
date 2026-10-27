.class Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$XuiDeathRecipientHolder;
.super Ljava/lang/Object;
.source "XUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XuiDeathRecipientHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 427
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;-><init>(Lcom/xiaopeng/xuimanager/XUIManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$XuiDeathRecipientHolder;->instance:Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200()Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;
    .locals 1

    .line 426
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$XuiDeathRecipientHolder;->instance:Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    return-object v0
.end method
