.class public Lcom/xiaopeng/commonfunc/utils/i;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static V(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1314
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p0

    .line 1315
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 1316
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1317
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volumeInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , volumeInfo.getDisk() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object p0

    .line 1320
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1322
    :cond_1
    goto :goto_0

    .line 1323
    :cond_2
    return-object v1
.end method

.method public static W(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1327
    nop

    .line 1328
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 1329
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 1330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1331
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volumeInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , volumeInfo.getDisk() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1333
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1334
    iget-object p0, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto :goto_1

    .line 1336
    :cond_0
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/system/a/a;->sleep(J)V

    .line 1337
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/i;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 1339
    goto :goto_1

    .line 1341
    :cond_1
    goto :goto_0

    .line 1342
    :cond_2
    const/4 p0, 0x0

    :goto_1
    const-string v0, "FileUtil"

    const-string v1, "getUDiskFsType [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    return-object p0
.end method

.method private static synthetic a(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 720
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJJ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$i$NvJGBCK4WbGY2NVpeMppyfkclyw;

    invoke-direct {p0, p2}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$i$NvJGBCK4WbGY2NVpeMppyfkclyw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 715
    if-eqz p3, :cond_0

    .line 717
    sget-object p2, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$i$MqMEEsohFVSIDGbUROpSv0w6Gw8;->INSTANCE:Lcom/xiaopeng/commonfunc/utils/-$$Lambda$i$MqMEEsohFVSIDGbUROpSv0w6Gw8;

    invoke-static {p0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 720
    :cond_0
    sget-object p2, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$i$WN86bzIrtWgiBc2PNXGQuUUmG7I;->INSTANCE:Lcom/xiaopeng/commonfunc/utils/-$$Lambda$i$WN86bzIrtWgiBc2PNXGQuUUmG7I;

    invoke-static {p0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 723
    :goto_0
    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    aget-object v1, p0, p3

    .line 725
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/i;->aY(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 727
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 728
    cmp-long v4, v2, p4

    if-ltz v4, :cond_1

    .line 729
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_1
    cmp-long v1, v2, p6

    if-lez v1, :cond_2

    .line 732
    goto :goto_3

    .line 737
    :cond_2
    goto :goto_2

    .line 735
    :catch_0
    move-exception v1

    .line 736
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 740
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 5

    .line 1398
    nop

    .line 1399
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    .line 1401
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 1403
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsbDeviceAttached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1405
    const/4 v0, 0x1

    .line 1407
    :cond_0
    goto :goto_0

    .line 1408
    :cond_1
    const-string p0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsbDeviceAttached vid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", res:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    return v0
.end method

.method public static aU(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 68
    const-string v0, ""

    .line 70
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static aV(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 391
    nop

    .line 392
    nop

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    nop

    .line 400
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 402
    if-nez p0, :cond_0

    .line 403
    goto :goto_1

    .line 406
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    .line 410
    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    .line 413
    :goto_1
    nop

    .line 415
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 413
    :catchall_1
    move-exception p0

    goto :goto_5

    .line 410
    :catch_1
    move-exception p0

    .line 411
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 413
    if-eqz v1, :cond_1

    .line 415
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 418
    :goto_3
    goto :goto_4

    .line 416
    :catch_2
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 421
    :cond_1
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 413
    :goto_5
    if-eqz v1, :cond_2

    .line 415
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 418
    goto :goto_6

    .line 416
    :catch_3
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_2
    :goto_6
    throw p0
.end method

.method public static aW(Ljava/lang/String;)Z
    .locals 4

    .line 517
    nop

    .line 518
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 519
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 520
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    .line 525
    :cond_0
    const/4 v0, 0x1

    .line 528
    :cond_1
    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkDir path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", res="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    return v0
.end method

.method public static aX(Ljava/lang/String;)V
    .locals 3

    .line 533
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 535
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 538
    if-eqz p0, :cond_0

    .line 539
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 540
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/i;->aX(Ljava/lang/String;)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 546
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 548
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 549
    if-eqz p0, :cond_2

    array-length p0, p0

    if-nez p0, :cond_2

    .line 550
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_2
    :goto_1
    goto :goto_2

    .line 553
    :catch_0
    move-exception p0

    .line 555
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    :cond_3
    :goto_2
    return-void
.end method

.method public static aY(Ljava/lang/String;)Z
    .locals 3

    .line 800
    nop

    .line 801
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    .line 805
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isExistFilePath = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    return v0
.end method

.method private static synthetic b(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 717
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 712
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 992
    if-eqz p0, :cond_0

    .line 993
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    move-exception p0

    goto :goto_1

    .line 997
    :cond_0
    :goto_0
    nop

    .line 998
    :goto_1
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3

    .line 500
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 501
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " successful"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    const/4 p0, 0x1

    return p0

    .line 507
    :cond_0
    return v0

    .line 510
    :cond_1
    return v0

    .line 513
    :cond_2
    return v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 299
    nop

    .line 300
    nop

    .line 301
    nop

    .line 304
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    nop

    .line 308
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 309
    if-nez v4, :cond_1

    .line 310
    goto :goto_4

    .line 311
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    nop

    .line 313
    nop

    .line 334
    move-object v0, v4

    goto :goto_4

    .line 314
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    new-array v5, v2, [Ljava/lang/String;

    aput-object v4, v5, v1

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 321
    :goto_0
    array-length v4, v5

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_5

    aget-object v7, v5, v6

    .line 322
    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 323
    const-string v4, ""

    invoke-virtual {v7, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    nop

    .line 327
    move-object v0, v4

    goto :goto_2

    .line 321
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 327
    :cond_5
    :goto_2
    goto :goto_4

    .line 331
    :catch_0
    move-exception v4

    goto :goto_3

    .line 334
    :catchall_0
    move-exception p0

    move-object v3, v0

    goto :goto_5

    .line 331
    :catch_1
    move-exception v4

    move-object v3, v0

    .line 332
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 334
    :goto_4
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/i;->closeQuietly(Ljava/io/Closeable;)V

    .line 335
    nop

    .line 336
    const-string v3, "FileUtil"

    const-string v4, "read path[%s] tag[%s] split[%s] value[%s]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object p1, v5, v2

    const/4 p0, 0x2

    aput-object p2, v5, p0

    const/4 p0, 0x3

    aput-object v0, v5, p0

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    return-object v0

    .line 334
    :catchall_1
    move-exception p0

    :goto_5
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/i;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 668
    nop

    .line 669
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 672
    const-string p1, "FileUtil"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFileNameWithSuffix filePath "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not exist"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 675
    if-eqz p0, :cond_2

    .line 676
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 677
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p0, v0

    .line 678
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 676
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_2
    :goto_1
    const-string p0, "FileUtil"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFileNameWithSuffix name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    return-object v2
.end method

.method public static synthetic lambda$MqMEEsohFVSIDGbUROpSv0w6Gw8(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/i;->b(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$NvJGBCK4WbGY2NVpeMppyfkclyw(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/i;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$WN86bzIrtWgiBc2PNXGQuUUmG7I(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/i;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 186
    nop

    .line 188
    nop

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 197
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    nop

    .line 205
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 206
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    nop

    .line 215
    const/4 v0, 0x1

    goto :goto_2

    .line 203
    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    .line 199
    :catch_0
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 203
    :catchall_1
    move-exception p0

    goto :goto_3

    .line 199
    :catch_1
    move-exception v2

    .line 200
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    nop

    .line 204
    if-eqz v1, :cond_1

    .line 205
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 206
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 208
    :catch_2
    move-exception v1

    .line 209
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    nop

    .line 212
    goto :goto_2

    .line 211
    :cond_1
    :goto_1
    nop

    .line 215
    :goto_2
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "res="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    return v0

    .line 203
    :goto_3
    nop

    .line 204
    if-eqz v1, :cond_2

    .line 205
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 206
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 208
    :catch_3
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    nop

    .line 211
    :cond_2
    :goto_4
    throw p0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1234
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unzipMultiFile from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    nop

    .line 1236
    nop

    .line 1237
    nop

    .line 1238
    nop

    .line 1239
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 1240
    nop

    .line 1242
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1243
    nop

    .line 1244
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1245
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1246
    nop

    .line 1247
    move-object v2, v1

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1248
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1250
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 1252
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1253
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1255
    :cond_1
    invoke-virtual {p0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1256
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1259
    :goto_1
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 1260
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 1262
    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1263
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1247
    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 1268
    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    .line 1265
    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_3

    .line 1268
    :catchall_1
    move-exception p1

    :goto_2
    move-object v1, v4

    goto :goto_b

    .line 1265
    :catch_1
    move-exception p1

    :goto_3
    move-object v1, v4

    goto :goto_6

    .line 1269
    :cond_3
    if-eqz v1, :cond_4

    .line 1270
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1272
    :cond_4
    if-eqz v2, :cond_5

    .line 1273
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1275
    :cond_5
    nop

    .line 1276
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 1278
    nop

    .line 1279
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 1265
    :catch_2
    move-exception p1

    goto :goto_6

    .line 1268
    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_4

    .line 1265
    :catch_3
    move-exception p1

    move-object v2, v1

    goto :goto_5

    .line 1268
    :catchall_3
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    :goto_4
    move-object v3, v2

    goto :goto_b

    .line 1265
    :catch_4
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    :goto_5
    move-object v3, v2

    .line 1266
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1269
    if-eqz v1, :cond_6

    .line 1270
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 1281
    :catch_5
    move-exception p0

    goto :goto_8

    .line 1272
    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 1273
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1275
    :cond_7
    if-eqz p0, :cond_8

    .line 1276
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 1278
    :cond_8
    if-eqz v3, :cond_9

    .line 1279
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    .line 1281
    :goto_8
    nop

    .line 1282
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1284
    goto :goto_a

    .line 1283
    :cond_9
    :goto_9
    nop

    .line 1285
    :goto_a
    return-void

    .line 1268
    :catchall_4
    move-exception p1

    .line 1269
    :goto_b
    if-eqz v1, :cond_a

    .line 1270
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_c

    .line 1281
    :catch_6
    move-exception p0

    goto :goto_d

    .line 1272
    :cond_a
    :goto_c
    if-eqz v2, :cond_b

    .line 1273
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1275
    :cond_b
    if-eqz p0, :cond_c

    .line 1276
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 1278
    :cond_c
    if-eqz v3, :cond_d

    .line 1279
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_e

    .line 1281
    :goto_d
    nop

    .line 1282
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    nop

    .line 1283
    :cond_d
    :goto_e
    throw p1
.end method
