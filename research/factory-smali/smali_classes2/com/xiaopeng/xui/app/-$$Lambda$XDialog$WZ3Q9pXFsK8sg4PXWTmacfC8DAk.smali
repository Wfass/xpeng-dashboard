.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$WZ3Q9pXFsK8sg4PXWTmacfC8DAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$WZ3Q9pXFsK8sg4PXWTmacfC8DAk;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$WZ3Q9pXFsK8sg4PXWTmacfC8DAk;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XDialog;->lambda$init$2(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
