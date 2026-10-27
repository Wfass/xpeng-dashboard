.class public final Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;
.super Ljava/lang/Object;
.source "AccountManagerHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;",
        "",
        "()V",
        "accountHandler",
        "Lcom/xiaopeng/carcontrol/common/account/IAccountManager;",
        "getAccountHandler",
        "()Lcom/xiaopeng/carcontrol/common/account/IAccountManager;",
        "setAccountHandler",
        "(Lcom/xiaopeng/carcontrol/common/account/IAccountManager;)V",
        "lib_common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;

.field private static accountHandler:Lcom/xiaopeng/carcontrol/common/account/IAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;->INSTANCE:Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccountHandler()Lcom/xiaopeng/carcontrol/common/account/IAccountManager;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;->accountHandler:Lcom/xiaopeng/carcontrol/common/account/IAccountManager;

    return-object v0
.end method

.method public final setAccountHandler(Lcom/xiaopeng/carcontrol/common/account/IAccountManager;)V
    .locals 0

    .line 7
    sput-object p1, Lcom/xiaopeng/carcontrol/common/account/AccountManagerHelper;->accountHandler:Lcom/xiaopeng/carcontrol/common/account/IAccountManager;

    return-void
.end method
