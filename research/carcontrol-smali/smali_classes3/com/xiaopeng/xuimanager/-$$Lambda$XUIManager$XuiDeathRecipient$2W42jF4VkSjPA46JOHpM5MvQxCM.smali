.class public final synthetic Lcom/xiaopeng/xuimanager/-$$Lambda$XUIManager$XuiDeathRecipient$2W42jF4VkSjPA46JOHpM5MvQxCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/XUIManagerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/XUIManagerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/-$$Lambda$XUIManager$XuiDeathRecipient$2W42jF4VkSjPA46JOHpM5MvQxCM;->f$0:Lcom/xiaopeng/xuimanager/XUIManagerBase;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/-$$Lambda$XUIManager$XuiDeathRecipient$2W42jF4VkSjPA46JOHpM5MvQxCM;->f$0:Lcom/xiaopeng/xuimanager/XUIManagerBase;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->lambda$addXUIManagerBase$0(Lcom/xiaopeng/xuimanager/XUIManagerBase;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
