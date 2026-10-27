.class public Laql$b;
.super Ljava/lang/Object;
.source "XmlyLoginFlowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Laql;


# direct methods
.method public constructor <init>(Laql;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Laql$b;->a:Laql;

    return-void
.end method

.method static synthetic a(Laql$b;Laql;)Laql;
    .locals 0

    .line 253
    iput-object p1, p0, Laql$b;->a:Laql;

    return-object p1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 262
    iget-object p1, p0, Laql$b;->a:Laql;

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Laql$b;->a:Laql;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "onCancel: ============="

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p1}, Laql;->b(Laql;)Laqk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {p1}, Laql;->b(Laql;)Laqk;

    move-result-object v0

    invoke-virtual {v0}, Laqk;->c()V

    const/4 v0, 0x1

    .line 270
    invoke-static {p1, v0}, Laql;->a(Laql;Z)Z

    :cond_1
    return-void
.end method
