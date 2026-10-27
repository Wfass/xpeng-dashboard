.class Laql$1;
.super Ljava/lang/Object;
.source "XmlyLoginFlowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laql;-><init>(Landroid/content/Context;Laql$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laql;


# direct methods
.method constructor <init>(Laql;)V
    .locals 0

    .line 65
    iput-object p1, p0, Laql$1;->a:Laql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Laql$1;->a:Laql;

    invoke-static {p1}, Laql;->a(Laql;)Lcom/xiaopeng/musicradio/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    return-void
.end method
