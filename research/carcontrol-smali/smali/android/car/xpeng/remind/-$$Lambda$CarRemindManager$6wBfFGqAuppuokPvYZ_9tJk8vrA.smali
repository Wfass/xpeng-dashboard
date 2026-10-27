.class public final synthetic Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;

    invoke-direct {v0}, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;-><init>()V

    sput-object v0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;->INSTANCE:Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;

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

    invoke-static {p1}, Landroid/car/xpeng/remind/CarRemindManager;->lambda$initSupportedPropConfigs$0(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
