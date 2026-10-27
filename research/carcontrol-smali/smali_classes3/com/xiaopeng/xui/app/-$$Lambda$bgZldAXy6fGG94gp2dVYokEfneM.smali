.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$bgZldAXy6fGG94gp2dVYokEfneM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$bgZldAXy6fGG94gp2dVYokEfneM;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$bgZldAXy6fGG94gp2dVYokEfneM;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method
