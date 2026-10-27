.class Lxb$a;
.super Ljava/lang/Object;
.source "ObjectReaderCreatorASM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lxb$a;->a:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lxb$a;->b:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lxb$a;->c:Ljava/lang/String;

    .line 195
    iput p4, p0, Lxb$a;->d:I

    .line 196
    iput-object p5, p0, Lxb$a;->e:Ljava/lang/String;

    .line 197
    iput-object p6, p0, Lxb$a;->f:Ljava/lang/String;

    .line 198
    iput p7, p0, Lxb$a;->g:I

    return-void
.end method
