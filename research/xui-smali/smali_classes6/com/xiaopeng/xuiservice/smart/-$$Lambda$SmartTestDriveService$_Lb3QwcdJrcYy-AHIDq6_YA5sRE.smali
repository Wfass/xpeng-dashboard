.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$_Lb3QwcdJrcYy-AHIDq6_YA5sRE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$_Lb3QwcdJrcYy-AHIDq6_YA5sRE;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    return-void
.end method


# virtual methods
.method public final onReceivePushMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$_Lb3QwcdJrcYy-AHIDq6_YA5sRE;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->lambda$registerPushMessage$1(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
