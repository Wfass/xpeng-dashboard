.class Lbjm$2;
.super Ljava/lang/Object;
.source "SongQualityChooseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjm;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbjm;


# direct methods
.method constructor <init>(Lbjm;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lbjm$2;->a:Lbjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lbjm$2;->a:Lbjm;

    invoke-virtual {p1}, Lbjm;->dismiss()V

    return-void
.end method
