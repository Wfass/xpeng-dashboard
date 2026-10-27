.class Lbut$1;
.super Ljava/lang/Object;
.source "SpeechNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbut;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbut;


# direct methods
.method constructor <init>(Lbut;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lbut$1;->c:Lbut;

    iput-object p2, p0, Lbut$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbut$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lbut$1;->c:Lbut;

    iget-object v1, p0, Lbut$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lbut$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbut;->a(Lbut;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
