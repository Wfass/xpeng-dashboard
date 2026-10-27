.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;->f$1:I

    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;->f$1:I

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->lambda$playSurroundWelcomeSoundEffect$1(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IZ)V

    return-void
.end method
