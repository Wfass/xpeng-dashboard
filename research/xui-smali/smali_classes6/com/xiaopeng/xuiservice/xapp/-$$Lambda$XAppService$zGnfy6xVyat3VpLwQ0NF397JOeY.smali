.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppService$zGnfy6xVyat3VpLwQ0NF397JOeY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppService$zGnfy6xVyat3VpLwQ0NF397JOeY;->f$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppService$zGnfy6xVyat3VpLwQ0NF397JOeY;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppService$zGnfy6xVyat3VpLwQ0NF397JOeY;->f$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppService$zGnfy6xVyat3VpLwQ0NF397JOeY;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->lambda$onReceive$0(Lcom/xiaopeng/xuiservice/xapp/XAppService;Landroid/content/Intent;)V

    return-void
.end method
