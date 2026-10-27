.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$L_N782b2wT_PyB3ytsgQVPITylU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/app/XDialogPure;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialogPure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$L_N782b2wT_PyB3ytsgQVPITylU;->f$0:Lcom/xiaopeng/xui/app/XDialogPure;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$L_N782b2wT_PyB3ytsgQVPITylU;->f$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    return-void
.end method
