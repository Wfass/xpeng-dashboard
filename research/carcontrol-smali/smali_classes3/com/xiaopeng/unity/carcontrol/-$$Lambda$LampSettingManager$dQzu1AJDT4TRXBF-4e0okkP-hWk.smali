.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;

    invoke-direct {v0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;-><init>()V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampSettingManager$dQzu1AJDT4TRXBF-4e0okkP-hWk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->lambda$dQzu1AJDT4TRXBF-4e0okkP-hWk(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
