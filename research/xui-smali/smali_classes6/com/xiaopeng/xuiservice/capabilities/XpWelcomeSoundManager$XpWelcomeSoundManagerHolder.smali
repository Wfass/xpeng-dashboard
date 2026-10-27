.class Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$XpWelcomeSoundManagerHolder;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XpWelcomeSoundManagerHolder"
.end annotation


# static fields
.field public static final instance:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$XpWelcomeSoundManagerHolder;->instance:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
