.class Lcom/xiaopeng/xuiservice/smart/SmartThemeService$2;
.super Ljava/lang/Object;
.source "SmartThemeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->initSportSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartThemeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V

    .line 95
    return-void
.end method
