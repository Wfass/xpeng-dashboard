.class public final synthetic Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/ipc/client/ClientListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;

    invoke-direct {v0}, Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;-><init>()V

    sput-object v0, Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;->INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/client/-$$Lambda$CarControlSDK$bkwGN0sKyKdb1Q7UPt4R-QRYu68;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;->lambda$init$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
