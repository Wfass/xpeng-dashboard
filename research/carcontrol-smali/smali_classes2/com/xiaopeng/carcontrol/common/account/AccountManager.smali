.class public final Lcom/xiaopeng/carcontrol/common/account/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/xiaopeng/carcontrol/common/account/AccountManager;",
        "",
        "()V",
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
.field public static final INSTANCE:Lcom/xiaopeng/carcontrol/common/account/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/common/account/AccountManager;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/common/account/AccountManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/common/account/AccountManager;->INSTANCE:Lcom/xiaopeng/carcontrol/common/account/AccountManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
