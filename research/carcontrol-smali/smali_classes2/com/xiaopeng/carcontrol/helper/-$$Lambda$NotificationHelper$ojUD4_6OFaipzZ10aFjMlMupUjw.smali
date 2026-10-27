.class public final synthetic Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;->INSTANCE:Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCountDown(Lcom/xiaopeng/xui/app/XDialog;I)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->lambda$showConfirmDialog$1(Lcom/xiaopeng/xui/app/XDialog;I)Z

    move-result p1

    return p1
.end method
