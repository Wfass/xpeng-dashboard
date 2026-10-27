.class Laql$2;
.super Ljava/lang/Object;
.source "XmlyLoginFlowDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laql;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Laql;


# direct methods
.method constructor <init>(Laql;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Laql$2;->b:Laql;

    iput-object p2, p0, Laql$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Laql$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lapu;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    new-instance v1, Laql$2$1;

    invoke-direct {v1, p0, v0}, Laql$2$1;-><init>(Laql$2;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
