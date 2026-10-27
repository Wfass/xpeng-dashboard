.class Lcdj$a$1;
.super Ljava/io/FilterOutputStream;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcdj$a;->a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcdj$a;


# direct methods
.method constructor <init>(Lcdj$a;Ljava/io/OutputStream;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcdj$a$1;->a:Lcdj$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    return-void
.end method
