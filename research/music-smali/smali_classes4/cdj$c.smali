.class Lcdj$c;
.super Lcdi;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcdi;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 0

    return-object p1
.end method
