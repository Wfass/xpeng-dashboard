.class public Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loostone/puremic/controller/audio/PMAudioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;


# direct methods
.method public constructor <init>(Lcom/loostone/puremic/controller/audio/PMAudioController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$100(Lcom/loostone/puremic/controller/audio/PMAudioController;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 10
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$200(Lcom/loostone/puremic/controller/audio/PMAudioController;)I

    move-result v0

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$300(Lcom/loostone/puremic/controller/audio/PMAudioController;)I

    move-result v1

    const/16 v2, 0xf00

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$100(Lcom/loostone/puremic/controller/audio/PMAudioController;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 12
    sget-object v5, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v6

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v7

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$300(Lcom/loostone/puremic/controller/audio/PMAudioController;)I

    move-result v8

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$200(Lcom/loostone/puremic/controller/audio/PMAudioController;)I

    move-result v9

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v10, v0, 0x2

    const/4 v11, 0x2

    invoke-virtual/range {v5 .. v11}, Lcom/loostone/libbottom/util/JniUtil;->resample([B[BIIII)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 13
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$600(Lcom/loostone/puremic/controller/audio/PMAudioController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$700(Lcom/loostone/puremic/controller/audio/PMAudioController;)J

    move-result-wide v1

    iget-object v5, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v5}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$800(Lcom/loostone/puremic/controller/audio/PMAudioController;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$900(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I

    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    int-to-long v5, v0

    invoke-static {v1, v5, v6}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$714(Lcom/loostone/puremic/controller/audio/PMAudioController;J)J

    .line 20
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1000(Lcom/loostone/puremic/controller/audio/PMAudioController;)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v4

    .line 21
    :goto_2
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_2

    .line 22
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v3

    mul-int/lit8 v5, v1, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v2, v1

    .line 23
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v6}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v6, v5

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1100(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v4, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I

    goto/16 :goto_0

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1100(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I

    goto/16 :goto_0

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$100(Lcom/loostone/puremic/controller/audio/PMAudioController;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$600(Lcom/loostone/puremic/controller/audio/PMAudioController;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$700(Lcom/loostone/puremic/controller/audio/PMAudioController;)J

    move-result-wide v1

    iget-object v5, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v5}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$800(Lcom/loostone/puremic/controller/audio/PMAudioController;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_5

    .line 33
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$900(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I

    goto :goto_3

    .line 35
    :cond_5
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    int-to-long v5, v0

    invoke-static {v1, v5, v6}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$714(Lcom/loostone/puremic/controller/audio/PMAudioController;J)J

    .line 38
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1000(Lcom/loostone/puremic/controller/audio/PMAudioController;)I

    move-result v1

    if-ne v1, v3, :cond_8

    move v1, v4

    .line 39
    :goto_4
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_7

    .line 40
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v3

    mul-int/lit8 v5, v1, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v2, v1

    .line 41
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v6}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v6, v5

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 43
    :cond_7
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1100(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v4, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I

    goto/16 :goto_0

    .line 45
    :cond_8
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$1100(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    move-result-object v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;->OooO00o:Lcom/loostone/puremic/controller/audio/PMAudioController;

    invoke-static {v2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 50
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method
