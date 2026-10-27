.class Lcdj$b;
.super Lcdi;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 220
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Number;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcdi;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1

    const/16 v0, 0x9

    .line 232
    invoke-static {p2, v0}, Lcdj$b;->a(Ljava/lang/Object;I)I

    move-result p2

    .line 233
    new-instance v0, Lcdu;

    invoke-direct {v0, p1, p2}, Lcdu;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method
