.class public final synthetic Lcom/xiaopeng/xuimanager/systemui/-$$Lambda$SystemUIClient$e5EkOGS5ot-0dXnt6tXb8WFcwso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/-$$Lambda$SystemUIClient$e5EkOGS5ot-0dXnt6tXb8WFcwso;->f$0:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/-$$Lambda$SystemUIClient$e5EkOGS5ot-0dXnt6tXb8WFcwso;->f$0:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->lambda$new$0$SystemUIClient()V

    return-void
.end method
