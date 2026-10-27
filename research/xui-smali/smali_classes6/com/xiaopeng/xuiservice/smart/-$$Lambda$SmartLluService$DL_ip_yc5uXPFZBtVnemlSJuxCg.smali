.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$2:I

    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$2:I

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lambda$turnOffLightAndStartEffect$0(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;IZ)V

    return-void
.end method
