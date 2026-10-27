.class public final synthetic Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$9S6MhdI7tHyxdmFDANcokTOpr9Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$9S6MhdI7tHyxdmFDANcokTOpr9Q;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$9S6MhdI7tHyxdmFDANcokTOpr9Q;->f$1:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$9S6MhdI7tHyxdmFDANcokTOpr9Q;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$9S6MhdI7tHyxdmFDANcokTOpr9Q;->f$1:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->lambda$notifySwitchEvent$0(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V

    return-void
.end method
