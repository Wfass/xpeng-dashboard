.class Lbny$2;
.super Ljava/lang/Object;
.source "SearchLoginDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbny;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbny;


# direct methods
.method constructor <init>(Lbny;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lbny$2;->a:Lbny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lbny$2;->a:Lbny;

    invoke-virtual {p1}, Lbny;->dismiss()V

    .line 95
    iget-object p1, p0, Lbny$2;->a:Lbny;

    invoke-static {p1}, Lbny;->a(Lbny;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/g;->b(Ljava/lang/String;)V

    return-void
.end method
